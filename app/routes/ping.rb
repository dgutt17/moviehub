class App < Roda
  route("ping") do |r|
    r.get do
      { status: "ok", message: "pong" }
    end
  end
end

