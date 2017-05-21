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
        @profile = Profile.find_by(id: current_user.profile_id)
    end

    def perfil
    end

    def encomendas
    end

    def criar
    end

    def listar
    end

    def inicioADM
    end

    def noticias
    end

end