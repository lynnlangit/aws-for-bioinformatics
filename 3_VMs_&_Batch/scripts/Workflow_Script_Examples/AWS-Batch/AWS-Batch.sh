#!/bin/bash

#   general info at https://aws.amazon.com/batch/use-cases/#life-sciences
#   more on AWS Batch at http://docs.aws.amazon.com/batch/latest/userguide/job-definition-template.html
#   IMPORTANT: 'Managed'  = use AWS Container(s) vs. 'Unmanaged'  = use your own custom Containers

#   use to generate the template format below and showing sample output

aws batch register-job-definition --generate-cli-skeleton

{
    "jobDefinitionName": "",
    "type": "",
    "parameters": {
        "KeyName": ""
    },
    "containerProperties": {
        "image": "",
        "vcpus": 0,
        "memory": 0,
        "command": [
            ""
        ],
        "jobRoleArn": "",
        "volumes": [
            {
                "host": {
                    "sourcePath": ""
                },
                "name": ""
            }
        ],
        "environment": [
            {
                "name": "",
                "value": ""
            }
        ],
        "mountPoints": [
            {
                "containerPath": "",
                "readOnly": true,
                "sourceVolume": ""
            }
        ],
        "readonlyRootFilesystem": true,
        "privileged": true,
        "ulimits": [
            {
                "hardLimit": 0,
                "name": "",
                "softLimit": 0
            }
        ],
        "user": ""
    }
}