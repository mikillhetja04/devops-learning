#! /bin/bash


# Variables
PROJECT_NAME=$1
DEPLOY_DIR=~/devops-lab/$PROJECT_NAME
BACKUP_DIR=~/devops-lab/backup
LOG_FILE=~/devops-lab/logs/deploy.log
kiem_tra_input() {
    if [ -z "$PROJECT_NAME" ]; then
        echo "Loi: Chua nhap ten project!"
        echo "Cach dung: ./deploy.sh ten_project"
        exit 1
    fi
}
backup() {
    if [ -d "$DEPLOY_DIR" ]; then
        echo "Dang backup project cu..."
        mkdir -p $BACKUP_DIR
        cp -r $DEPLOY_DIR $BACKUP_DIR/${PROJECT_NAME}_backup
        echo "Backup xong!"
    else
        echo "Khong co project cu, bo qua backup."
    fi
}
deploy() {
    echo "Dang deploy $PROJECT_NAME..."
    mkdir -p $DEPLOY_DIR/src
    mkdir -p $DEPLOY_DIR/logs
    mkdir -p $DEPLOY_DIR/config
    echo "port=8080" > $DEPLOY_DIR/config/app.conf
    echo "Deploy $PROJECT_NAME luc $(date)" >> $LOG_FILE
    echo "Deploy xong!"
}
echo "=== BAT DAU DEPLOY ==="
kiem_tra_input
backup
deploy
echo "=== HOAN THANH ==="
echo "Project: $PROJECT_NAME"
echo "Thu muc: $DEPLOY_DIR"
