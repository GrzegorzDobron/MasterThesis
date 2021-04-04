# -*- mode: python ; coding: utf-8 -*-

block_cipher = None


a = Analysis(['C:\\Users\\dobro\\Documents\\masterThesis_soft\\masterThesis.py'],
             pathex=['C:\\Users\\dobro\\Documents\\masterThesis_soft\\build'],
             binaries=[],
             datas=[
             ('C:\\Users\\dobro\\Documents\\masterThesis_soft\\masterThesis.py', '.'),
             ('C:\\Users\\dobro\\Documents\\masterThesis_soft\\var.py', '.'),
             ('C:\\Users\\dobro\\Documents\\masterThesis_soft\\backend\\__init__.py', 'backend'),
             ('C:\\Users\\dobro\\Documents\\masterThesis_soft\\backend\\back.py', 'backend'),
             ('C:\\Users\\dobro\\Documents\\masterThesis_soft\\backend\\input.py', 'backend'),
             ('C:\\Users\\dobro\\Documents\\masterThesis_soft\\backend\\output.py', 'backend'),
             ('C:\\Users\\dobro\\Documents\\masterThesis_soft\\backend\\static.py', 'backend'),
             ('C:\\Users\\dobro\\Documents\\masterThesis_soft\\frontend\\files\\capacitor.png', 'frontend\\files'),
             ('C:\\Users\\dobro\\Documents\\masterThesis_soft\\frontend\\files\\resistor.png', 'frontend\\files'),
             ('C:\\Users\\dobro\\Documents\\masterThesis_soft\\frontend\\files\\welcome-logo.png', 'frontend\\files'),
             ('C:\\Users\\dobro\\Documents\\masterThesis_soft\\frontend\\text\\faq.txt', 'frontend\\text'),
             ('C:\\Users\\dobro\\Documents\\masterThesis_soft\\frontend\\LayoutFaq.qml', 'frontend'),
             ('C:\\Users\\dobro\\Documents\\masterThesis_soft\\frontend\\__init__.py', 'frontend'),
             ('C:\\Users\\dobro\\Documents\\masterThesis_soft\\frontend\\LayoutHome.qml', 'frontend'),
             ('C:\\Users\\dobro\\Documents\\masterThesis_soft\\frontend\\LayoutHomeCapacitor.qml', 'frontend'),
             ('C:\\Users\\dobro\\Documents\\masterThesis_soft\\frontend\\LayoutHomeChoose.qml', 'frontend'),
             ('C:\\Users\\dobro\\Documents\\masterThesis_soft\\frontend\\LayoutHomeResistor.qml', 'frontend'),
             ('C:\\Users\\dobro\\Documents\\masterThesis_soft\\frontend\\LayoutHomeWelcome.qml', 'frontend'),
             ('C:\\Users\\dobro\\Documents\\masterThesis_soft\\frontend\\LayoutOptions.qml', 'frontend'),
             ('C:\\Users\\dobro\\Documents\\masterThesis_soft\\frontend\\main.qml', 'frontend')
             ],
             hiddenimports=[],
             hookspath=[],
             runtime_hooks=[],
             excludes=[],
             win_no_prefer_redirects=False,
             win_private_assemblies=False,
             cipher=block_cipher,
             noarchive=False)
pyz = PYZ(a.pure, a.zipped_data,
             cipher=block_cipher)
exe = EXE(pyz,
          a.scripts,
          [],
          exclude_binaries=True,
          name='masterThesis',
          debug=False,
          bootloader_ignore_signals=False,
          strip=False,
          upx=True,
          console=False )
coll = COLLECT(exe,
               a.binaries,
               a.zipfiles,
               a.datas,
               strip=False,
               upx=True,
               upx_exclude=[],
               name='masterThesis')

