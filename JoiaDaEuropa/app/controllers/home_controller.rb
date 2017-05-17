class HomeController < ApplicationController

    skip_before_action :authenticate_user!

    def index

        @today = Time.now

    end

    def missao
    end

    def quemsomos
    end

    def contactos
    end

    def inicio
    end

    def perfil
    end

    def encomendas
    end

end