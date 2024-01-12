import framebuffer as fb
from sh1122_ctrl import sh1122 as sh_ctrl

def test_SH1122_text():
    sh = sh_ctrl()
    frame = fb.text_to_framebuffer("O p e n F A S o C", 1024, 64, 72)
    sh.write_data(frame)

def test_SH1122_logo():
    sh = sh_ctrl()
    frame = fb.figure_to_framebuffer("fig/umich.png", 1024, 64, 192, 64)
    sh.write_data(frame)

def test_SH1222():
    sh = sh_ctrl()
    frame = fb.all_to_framebuffer(0)
    sh.write_data(frame)
    
# test_SH1122_text()
# test_SH1122_logo()
# test_SH1222()