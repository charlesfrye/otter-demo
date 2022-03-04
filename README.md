# otter-demo

Demonstration of an
[`otter-grader`](https://otter-grader.readthedocs.io/en/latest/index.html)
workflow.

1. Edit autograded notebook, here `lab.ipynb`, and any associated files, here `foo.py`.
2. Get the notebook into canonical state, e.g. with "Restart & Run All".
3. Run `otter assign lab.ipynb ./dist --v1`. If any tests fail, the workflow fails.
4. Make any additional adjustments to associated files, e.g. hiding code in `.py` files.
5. Copy files to student repo (here, using `bundle.sh`), including `tests/`
6. Commit-and-push changes to both repos.

Once automated, this can all easily be wrapped into a makefile.

TODOs
1. Automate notebook normalization.
2. Automate adjustments to associated code.
3. Make `bundle.sh`
4. Consider pros and cons of git automation, e.g. with GH actions.

Example output is in [this repo](https://github.com/charlesfrye/otter-demo-labs).
