#!/bin/bash

amazon-ssm-agent -register -code "${SSM_AGENT_CODE}" -id "${SSM_AGENT_ID}" -region "${AWS_DEFAULT_REGION}" 
amazon-ssm-agent
