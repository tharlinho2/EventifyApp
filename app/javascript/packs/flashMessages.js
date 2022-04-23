import Toastify from 'toastify-js'

document.addEventListener('DOMContentLoaded', () => {
  const backgroundColors = {
    notice: '#009688',
    alert: '#f44336',
    error: '#f44336',
  }

  const timeDuration = {
    notice: 3000,
    alert: 4000,
    error: 6000,
  }

  JSON.parse(document.body.dataset.flashMessages).forEach((flashMessage) => {
    const [type, messages] = flashMessage

    console.log(messages)

    messages.forEach((message) => {
      Toastify({
        text: message,
        duration: timeDuration[type],
        close: true,
        backgroundColor: backgroundColors[type],
        stopOnFocus: true,
      }).showToast()
    })
  })
})
