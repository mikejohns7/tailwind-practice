module.exports = {
  theme: {
    extend: {
      width: {
        '96': '24rem',
        '128': '32rem',
      },
    }
  },
  variants: {
    borderStyle: ['responsive', 'hover', 'focus'],
    display: ['responsive', 'hover', 'focus'],
    textColor: ['responsive', 'group-hover', 'hover', 'focus'],
  },
  plugins: []
}
