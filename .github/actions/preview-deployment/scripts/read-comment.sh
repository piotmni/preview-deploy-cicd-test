echo "::group::read comment"

echo "comment is ${{ github.event.comment.body }}"

echo "::endgroup::"
