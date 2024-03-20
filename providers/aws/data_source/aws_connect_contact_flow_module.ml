(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_connect_contact_flow_module = {
  contact_flow_module_id : string prop option; [@option]
  id : string prop option; [@option]
  instance_id : string prop;
  name : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_connect_contact_flow_module) -> ()

let yojson_of_aws_connect_contact_flow_module =
  (function
   | {
       contact_flow_module_id = v_contact_flow_module_id;
       id = v_id;
       instance_id = v_instance_id;
       name = v_name;
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
       let bnds =
         match v_contact_flow_module_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "contact_flow_module_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_connect_contact_flow_module ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_connect_contact_flow_module

[@@@deriving.end]

let aws_connect_contact_flow_module ?contact_flow_module_id ?id ?name
    ?tags ~instance_id () : aws_connect_contact_flow_module =
  { contact_flow_module_id; id; instance_id; name; tags }

type t = {
  arn : string prop;
  contact_flow_module_id : string prop;
  content : string prop;
  description : string prop;
  id : string prop;
  instance_id : string prop;
  name : string prop;
  state : string prop;
  status : string prop;
  tags : (string * string) list prop;
}

let make ?contact_flow_module_id ?id ?name ?tags ~instance_id __id =
  let __type = "aws_connect_contact_flow_module" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       contact_flow_module_id =
         Prop.computed __type __id "contact_flow_module_id";
       content = Prop.computed __type __id "content";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       name = Prop.computed __type __id "name";
       state = Prop.computed __type __id "state";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_connect_contact_flow_module
        (aws_connect_contact_flow_module ?contact_flow_module_id ?id
           ?name ?tags ~instance_id ());
    attrs = __attrs;
  }

let register ?tf_module ?contact_flow_module_id ?id ?name ?tags
    ~instance_id __id =
  let (r : _ Tf_core.resource) =
    make ?contact_flow_module_id ?id ?name ?tags ~instance_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
