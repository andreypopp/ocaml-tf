(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_service_discovery_instance = {
  attributes : (string * string prop) list;
  id : string prop option; [@option]
  instance_id : string prop;
  service_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_service_discovery_instance) -> ()

let yojson_of_aws_service_discovery_instance =
  (function
   | {
       attributes = v_attributes;
       id = v_id;
       instance_id = v_instance_id;
       service_id = v_service_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_id in
         ("service_id", arg) :: bnds
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
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_attributes
         in
         ("attributes", arg) :: bnds
       in
       `Assoc bnds
    : aws_service_discovery_instance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_service_discovery_instance

[@@@deriving.end]

let aws_service_discovery_instance ?id ~attributes ~instance_id
    ~service_id () : aws_service_discovery_instance =
  { attributes; id; instance_id; service_id }

type t = {
  attributes : (string * string) list prop;
  id : string prop;
  instance_id : string prop;
  service_id : string prop;
}

let make ?id ~attributes ~instance_id ~service_id __id =
  let __type = "aws_service_discovery_instance" in
  let __attrs =
    ({
       attributes = Prop.computed __type __id "attributes";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       service_id = Prop.computed __type __id "service_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_service_discovery_instance
        (aws_service_discovery_instance ?id ~attributes ~instance_id
           ~service_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~attributes ~instance_id ~service_id __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ~attributes ~instance_id ~service_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
