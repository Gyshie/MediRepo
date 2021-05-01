defmodule Medirepo.Bulletins.Get do
  alias Medirepo.{Error, Repo, Bulletin}

  def by_id(id) do
    case Repo.get(Bulletin, id) do
      nil -> {:error, Error.build_bulletin_not_found_error()}
      bulletin -> {:ok, bulletin}
    end
  end
end
