*** Settings ***
Library           RabbitMq
Suite setup       Open connection
Suite teardown    Close All Rabbitmq Connections

*** Test Cases ***
Show overview
    ${overview}=                  Overview
    Log To Console                ${overview}

*** Keywords ***
Open connection
    Create Rabbitmq Connection    localhost    15672    5672
    ...                           rabbitmq    rabbitmq    alias=rmq   vhost=/