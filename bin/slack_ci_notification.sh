#!/bin/bash -e
PAYLOAD=$(cat <<EOF
{
    "username": "$USERNAME",
    "icon_emoji": "$EMOJI",
    "attachments": [
        {
            "color": "$COLOR",
            "author_name": "$GITHUB_ACTOR",
            "pretext": "$PRETEXT",
            "title": "$TITLE",
            "title_link": "https://github.com/$GITHUB_REPOSITORY/actions/runs/$GITHUB_RUN_ID",
            "text": "$TEXT"
        }
    ]
}
EOF
)

curl -X POST -H 'Content-type: application/json' --data "$PAYLOAD" $SLACK_WEBHOOK
