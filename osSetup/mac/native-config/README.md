
# Homebrew natively install

    step 1:
    >> cd /opt

    step 2:
    >> sudo mkdir homebrew

    step 3: make us the owner of the directory so that we don't need permission
    >> sudo chown -R $(whoami) /opt/homebrew

    step 4:
    >> curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew

    step 5:
    >> echo "export PATH=/opt/homebrew/bin:$PATH" >> ~/.zshrc

    step 6:(optional)
    >> add path environment manually, so that you keep all personal setting to one place
    >> export PATH=/opt/homebrew/bin:$PATH

