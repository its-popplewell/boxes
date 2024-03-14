// We use separate the x and y instead of using a vec2 to avoid wgsl padding.
struct AppState {
	time: i32,
}

struct VertexInput {
	@location(0) vert_coords: vec2<f32>,
};

struct VertexOutput {
    @builtin(position) position: vec4<f32>,
};

@group(0)
@binding(0)
var<uniform> app_state: AppState;

@vertex
fn vs_main(in: VertexInput) -> VertexOutput {
    var out: VertexOutput;

    out.position = vec4<f32>(in.vert_coords * 0.9, 1.0, 1.0);

//		if (in.vertex_index == 0u) {
  //  	out.color = vec4<f32>(sin(0.01 * f32(app_state.time)) + 1, 0.0, 0.0, 1.0);
    	// out.color = vec4<f32>(1.0, 0.0, 0.0, 1.0);
		//} else if (in.vertex_index == 1u) {
			//out.color = vec4<f32>(0.0, sin(0.01 * f32(app_state.time)) + 1, 0.0, 1.0);
			// out.color = vec4<f32>(0.0, 1.0, 0.0, 1.0);
		//} else {
			//out.color = vec4<f32>(0.0, 0.0, sin(0.01 * f32(app_state.time)) + 1, 1.0);
			// out.color = vec4<f32>(0.0, 0.0, 1.0, 1.0);
		//}

    return out;
}

@fragment
fn fs_main(in: VertexOutput) -> @location(0) vec4<f32> {
	//return in.color;
	return vec4<f32>(0.0, 0.0, 0.0, 1.0);
}
