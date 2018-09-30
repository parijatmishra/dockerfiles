FROM node:carbon-alpine
RUN npm install -g yarn
RUN yarn global add cfn-lint
ENTRYPOINT ["cfn-lint"]