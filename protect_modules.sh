#!/bin/bash

# 🛡️ СКРИПТ ЗАЩИТЫ МОДУЛЕЙ
# Автоматически создает резервные копии перед изменениями

echo "🛡️ Создание резервной копии модулей..."

# Создаем папку для резервных копий
BACKUP_DIR="client/src/components_backup_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$BACKUP_DIR"

# Копируем все компоненты
cp -r client/src/components/* "$BACKUP_DIR/"

echo "✅ Резервная копия создана: $BACKUP_DIR"
echo "📁 Содержимое резерва:"
ls -la "$BACKUP_DIR/"

echo ""
echo "🔒 Теперь можно безопасно вносить изменения!"
echo "🚨 Если что-то сломается, восстановите командой:"
echo "   cp -r $BACKUP_DIR/* client/src/components/"
echo ""
echo "📋 Не забудьте протестировать функциональность!"
