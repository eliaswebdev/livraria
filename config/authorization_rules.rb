authorization do
    role :admin do
        # ROLES
        # has_permission_on [:pages], :to => [:index]
        has_permission_on [:admin_livros], :to => [:manage]
        has_permission_on [:admin_categorias], :to => [:manage]
        has_permission_on [:admin_autores], :to => [:manage]
        has_permission_on [:admin_editoras], :to => [:read]
        # has_permission_on [:admin_users], :to => [:manage]
    end

    role :editor do
        # ROLES
        has_permission_on [:pages], :to => [:index]
    end

    role :client do
        # ROLES
        has_permission_on [:pages], :to => [:index]
    end
end

privileges do
    privilege :manage, :includes => [:index, :show, :new, :create, :edit, :update, :destroy]
    privilege :read,   :includes => [:index, :show]
    privilege :create, :includes => [:new]
    privilege :update, :includes => [:edit]
    privilege :delete, :includes => [:destroy]
end