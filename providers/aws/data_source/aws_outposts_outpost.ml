(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_outposts_outpost = {
  arn : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
  owner_id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_outposts_outpost) -> ()

let yojson_of_aws_outposts_outpost =
  (function
   | {
       arn = v_arn;
       id = v_id;
       name = v_name;
       owner_id = v_owner_id;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_owner_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "owner_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
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
         match v_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_outposts_outpost -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_outposts_outpost

[@@@deriving.end]

let aws_outposts_outpost ?arn ?id ?name ?owner_id ?tags () :
    aws_outposts_outpost =
  { arn; id; name; owner_id; tags }

type t = {
  tf_name : string;
  arn : string prop;
  availability_zone : string prop;
  availability_zone_id : string prop;
  description : string prop;
  id : string prop;
  lifecycle_status : string prop;
  name : string prop;
  owner_id : string prop;
  site_arn : string prop;
  site_id : string prop;
  supported_hardware_type : string prop;
  tags : (string * string) list prop;
}

let make ?arn ?id ?name ?owner_id ?tags __id =
  let __type = "aws_outposts_outpost" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       availability_zone =
         Prop.computed __type __id "availability_zone";
       availability_zone_id =
         Prop.computed __type __id "availability_zone_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       lifecycle_status =
         Prop.computed __type __id "lifecycle_status";
       name = Prop.computed __type __id "name";
       owner_id = Prop.computed __type __id "owner_id";
       site_arn = Prop.computed __type __id "site_arn";
       site_id = Prop.computed __type __id "site_id";
       supported_hardware_type =
         Prop.computed __type __id "supported_hardware_type";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_outposts_outpost
        (aws_outposts_outpost ?arn ?id ?name ?owner_id ?tags ());
    attrs = __attrs;
  }

let register ?tf_module ?arn ?id ?name ?owner_id ?tags __id =
  let (r : _ Tf_core.resource) =
    make ?arn ?id ?name ?owner_id ?tags __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
