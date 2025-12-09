
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.number = true                 -- Показывать номера строк
vim.opt.signcolumn = "yes"            -- Всегда показывать колонку для знаков (например, ошибок), чтобы текст не "прыгал"
vim.opt.wrap = false                  -- Отключить перенос строк

vim.opt.tabstop = 4                   -- Размер табуляции в пробелах
vim.opt.shiftwidth = 4                -- Размер отступа при автоформатировании
vim.opt.expandtab = true              -- Использовать пробелы вместо табов
vim.opt.smartindent = false           -- "Умная" расстановка отступов

vim.opt.hlsearch = true               -- Подсвечивать все найденные совпадения
vim.opt.incsearch = true              -- Показывать совпадения по мере ввода
vim.opt.ignorecase = true             -- Игнорировать регистр при поиске
vim.opt.smartcase = true              -- Но если в поиске есть заглавная буква, искать с учётом регистра

vim.opt.termguicolors = true          -- Включить поддержку "true color" для тем
vim.opt.undofile = true               -- Включить сохранение истории изменений между сессиями
vim.opt.swapfile = false              -- Отключить swap-файлы
vim.opt.backup = false                -- Отключить создание резервных копий
vim.opt.scrolloff = 8                 -- Оставлять 8 строк контекста сверху и снизу от курсора при прокрутке
vim.opt.colorcolumn = "80"            -- Отображать вертикальную линию на 80-й колонке, чтобы следить за длиной строк
vim.opt.clipboard = 'unnamedplus'     -- Использовать системный буфер обмена по умолчанию


