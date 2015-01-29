# coding: utf-8

class MainWindowController < ApplicationController
  set_view :main_window

  def initialize(*args)
    @click_count = 0
    btn_clicked
    super
  end

  def btn_clicked
    @click_count += 1
    @label.text = "Clicked: #{@click_count}"
  end

end
