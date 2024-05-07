(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration = { style : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration) -> ()

let yojson_of_configuration =
  (function
   | { style = v_style } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_style in
         ("style", arg) :: bnds
       in
       `Assoc bnds
    : configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration

[@@@deriving.end]

type aws_location_map = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  map_name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  configuration : configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_location_map) -> ()

let yojson_of_aws_location_map =
  (function
   | {
       description = v_description;
       id = v_id;
       map_name = v_map_name;
       tags = v_tags;
       tags_all = v_tags_all;
       configuration = v_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_configuration v_configuration
         in
         ("configuration", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_map_name in
         ("map_name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_location_map -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_location_map

[@@@deriving.end]

let configuration ~style () : configuration = { style }

let aws_location_map ?description ?id ?tags ?tags_all ~map_name
    ~configuration () : aws_location_map =
  { description; id; map_name; tags; tags_all; configuration }

type t = {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  id : string prop;
  map_arn : string prop;
  map_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  update_time : string prop;
}

let make ?description ?id ?tags ?tags_all ~map_name ~configuration
    __id =
  let __type = "aws_location_map" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       map_arn = Prop.computed __type __id "map_arn";
       map_name = Prop.computed __type __id "map_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_location_map
        (aws_location_map ?description ?id ?tags ?tags_all ~map_name
           ~configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ~map_name
    ~configuration __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~map_name ~configuration
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
