def defaults(args)
  args.state.bg ||= {x: 0, y: 0, w: args.grid.w, h: args.grid.h, r: 56, g: 23, b: 30}
  args.state.center_bar ||= {x: args.grid.w.half - 5, y: 0, w: 10, h: args.grid.h, r: 57, g: 209, b: 255}

  args.state.l_score ||= {x: args.grid.w / 4, y: args.grid.h * 0.9, text: "0", size_enum: 20, font: "Adventurer.ttf", r: 57, g: 209, b: 239}
  args.state.r_score ||= {x: args.grid.w * 0.75, y: args.grid.h * 0.9, text: "0", size_enum: 20, font: "Adventurer.ttf", r: 57, g: 209, b: 239}

  args.state.l_paddle ||= {x: args.grid.w * 0.05 - 10, y: args.grid.h / 2 - 75, w: 20, h: 150, r: 53, g: 209, b: 48}
  args.state.r_paddle ||= {x: args.grid.w * 0.95 - 10, y: args.grid.h / 2 - 75, w: 20, h: 150, r: 234, g: 181, b: 65}

  args.state.ball ||= {x: args.grid.w.half - 15, y: args.grid.h.half - 15, w: 30, h: 30, r: 16, g: 80, b: 229}

  args.state.solids ||= [
    args.state.bg,
    args.state.center_bar,
    args.state.l_paddle,
    args.state.r_paddle,
    args.state.ball
  ]
end

def render(args)
  args.outputs.solids << args.state.solids
  args.outputs.labels << [args.state.l_score, args.state.r_score]
end

def tick(args)
  defaults(args)
  render(args)
end

$gtk.reset
