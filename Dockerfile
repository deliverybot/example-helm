FROM node:alpine
COPY index.js /bin/index.js
CMD ["node", "/bin/index.js"]
