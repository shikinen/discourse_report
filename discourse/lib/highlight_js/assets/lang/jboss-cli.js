hljs.registerLanguage("jboss-cli",function(e){var a={b:/[\w-]+ *=/,rB:!0,r:0,c:[{cN:"attr",b:/[\w-]+/}]},r={cN:"params",b:/\(/,e:/\)/,c:[a],r:0},o={cN:"function",b:/:[\w\-.]+/,r:0},t={cN:"string",b:/\B(([\/.])[\w\-.\/=]+)+/},c={cN:"params",b:/--[\w\-=\/]+/};return{aliases:["wildfly-cli"],l:"[a-z-]+",k:{keyword:"alias batch cd clear command connect connection-factory connection-info data-source deploy deployment-info deployment-overlay echo echo-dmr help history if jdbc-driver-info jms-queue|20 jms-topic|20 ls patch pwd quit read-attribute read-operation reload rollout-plan run-batch set shutdown try unalias undeploy unset version xa-data-source",literal:"true false"},c:[e.HCM,e.QSM,c,o,t,r]}});