#!/bin/bash

# 🔄 СКРИПТ ВОССТАНОВЛЕНИЯ МОДУЛЕЙ
# Восстанавливает компоненты из последней резервной копии

echo "🔄 Восстановление модулей из резервной копии..."

# Находим последнюю резервную копию
LATEST_BACKUP=$(ls -td client/src/components_backup_* | head -1)

if [ -z "$LATEST_BACKUP" ]; then
    echo "❌ Резервные копии не найдены!"
    echo "📁 Проверьте папку client/src/components_backup_*"
    exit 1
fi

echo "📁 Найдена резервная копия: $LATEST_BACKUP"
echo "⚠️  Восстанавливаю компоненты..."

# Восстанавливаем компоненты
cp -r "$LATEST_BACKUP"/* client/src/components/

echo "✅ Модули восстановлены из: $LATEST_BACKUP"
echo "🔄 Перезапустите приложение: npm run dev"
echo ""
echo "📋 Проверьте, что все функции работают корректно!"
