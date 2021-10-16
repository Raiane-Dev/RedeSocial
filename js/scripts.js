    const usuariosDisplay = document.querySelector('.usuarios-perfil');
    const buttonDisplay = document.querySelector('.icon');

    buttonDisplay.addEventListener('click', (e)=>{
        usuariosDisplay.style.display = "block";
    });

    
    
    
    const cadastrar = document.getElementById('nao-possui');

    cadastrar.addEventListener('click', (e)=>{
        e.preventDefault();
        document.getElementById('logar').style.display = "none";
        document.getElementById('cadastrar').style.display = "block";
        document.querySelector('div.login').style.height = "65vh";

    });
