# frozen_string_literal: true

class GeneratorController < ApplicationController
  def index
    GeneratorJob.perform_later
  end
end
