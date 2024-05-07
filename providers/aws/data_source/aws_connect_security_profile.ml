(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_connect_security_profile = {
  id : string prop option; [@option]
  instance_id : string prop;
  name : string prop option; [@option]
  security_profile_id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_connect_security_profile) -> ()

let yojson_of_aws_connect_security_profile =
  (function
   | {
       id = v_id;
       instance_id = v_instance_id;
       name = v_name;
       security_profile_id = v_security_profile_id;
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
         match v_security_profile_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "security_profile_id", arg in
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
         let arg = yojson_of_prop yojson_of_string v_instance_id in
         ("instance_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_connect_security_profile ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_connect_security_profile

[@@@deriving.end]

let aws_connect_security_profile ?id ?name ?security_profile_id ?tags
    ~instance_id () : aws_connect_security_profile =
  { id; instance_id; name; security_profile_id; tags }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  instance_id : string prop;
  name : string prop;
  organization_resource_id : string prop;
  permissions : string list prop;
  security_profile_id : string prop;
  tags : (string * string) list prop;
}

let make ?id ?name ?security_profile_id ?tags ~instance_id __id =
  let __type = "aws_connect_security_profile" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       name = Prop.computed __type __id "name";
       organization_resource_id =
         Prop.computed __type __id "organization_resource_id";
       permissions = Prop.computed __type __id "permissions";
       security_profile_id =
         Prop.computed __type __id "security_profile_id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_connect_security_profile
        (aws_connect_security_profile ?id ?name ?security_profile_id
           ?tags ~instance_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?security_profile_id ?tags
    ~instance_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?security_profile_id ?tags ~instance_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
