//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform vec4 u_fLightPositionRadius;        // x=lightx, y=lighty, z=light radius, w=maximum shadow
varying vec2 v_vScreenPos;

void main()
{
    vec2 vector = vec2( v_vScreenPos.xy - u_fLightPositionRadius.xy );
    float dist = sqrt(vector.x * vector.x + vector.y * vector.y);

   
    if( dist< u_fLightPositionRadius.z ){
		float fall_off = dist / u_fLightPositionRadius.z;
        
		vec4 color = texture2D( gm_BaseTexture, v_vTexcoord );
		if(color.a <= 0.01)
		{
			gl_FragColor = v_vColour;
		}
		else
		{
			gl_FragColor = color;
		}
		//gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
		
		
		gl_FragColor = mix(gl_FragColor, vec4(0.0, 0.0, 0.0, u_fLightPositionRadius.w), fall_off);
    }else{
        gl_FragColor = vec4(0.0, 0.0, 0.0, u_fLightPositionRadius.w);
    }
	
	
}
