const chatButton = document.querySelector('.chatbox__button');
const chatContent = document.querySelector('.chatbox__support');
const icons = {
    isClicked: '<img src="/tfa105g2-Spring/assets/image/icons/chatbox-icon.svg" />',
    isNotClicked: '<img src="/tfa105g2-Spring/assets/image/icons/chatbox-icon.svg" />'
}
const chatbox = new InteractiveChatbox(chatButton, chatContent, icons);
chatbox.display();
chatbox.toggleIcon(false, chatButton);