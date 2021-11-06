class Chatbot {
  constructor() {
      this.args = {
          openButton: document.querySelector('.chatbot_button'),
          chatbot: document.querySelector('.chatbot_suporte'),
          sendButton: document.querySelector('.send_button')
      }

      this.state = false;
      this.messages = [];
  }

  display() {
      const {openButton, chatbot, sendButton} = this.args;

      openButton.addEventListener('click', () => this.toggleState(chatbot))

      sendButton.addEventListener('click', () => this.onSendButton(chatbot))

      const node = chatbot.querySelector('input');
      node.addEventListener("keyup", ({key}) => {
          if (key === "Enter") {
              this.onSendButton(chatbot)
          }
      })
  }

  toggleState(chatbot) {
      this.state = !this.state;
      if(this.state) {
          chatbot.classList.add('chatbot-active')
      } else {
          chatbot.classList.remove('chatbot-active')
      }
  }

  onSendButton(chatbot) {
      var textField = chatbot.querySelector('input');
      let text1 = textField.value
      if (text1 === "") {
          return;
      }

      let msg1 = { name: "User", message: text1 }
      this.messages.push(msg1);

      fetch('http://127.0.0.1:5500/predict', {
          method: 'POST',
          body: JSON.stringify({ message: text1 }),
          mode: 'cors',
          headers: {
            'Content-Type': 'application/json'
          },
        })
        .then(r => r.json())
        .then(r => {
          let msg2 = { name: "Sam", message: r.answer };
          this.messages.push(msg2);
          this.updateChatText(chatbot)
          textField.value = ''

      }).catch((error) => {
          console.error('Error:', error);
          this.updateChatText(chatbot)
          textField.value = ''
        });
  }

  updateChatText(chatbot) {
      var html = '';
      this.messages.slice().reverse().forEach(function(item, index) {
          if (item.name === "Sam")
          {
              html += '<div class="messages_item messages_item--visitor">' + item.message + '</div>'
          }
          else
          {
              html += '<div class="messages_item messages_item--operator">' + item.message + '</div>'
          }
        });

      const chatmessage = chatbot.querySelector('.chatbot_messages');
      chatmessage.innerHTML = html;
  }
}


const chatbot = new chatbot();
chatbot.display();