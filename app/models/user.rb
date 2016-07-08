# -*- coding: utf-8 -*-

class User < ActiveRecord::Base
  def admin_text
    return '有' if is_admin
    '無'
  end
end
