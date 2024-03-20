(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_vpclattice_service_network = {
  id : string prop option; [@option]
  service_network_identifier : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpclattice_service_network) -> ()

let yojson_of_aws_vpclattice_service_network =
  (function
   | {
       id = v_id;
       service_network_identifier = v_service_network_identifier;
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
         let arg =
           yojson_of_prop yojson_of_string
             v_service_network_identifier
         in
         ("service_network_identifier", arg) :: bnds
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
    : aws_vpclattice_service_network ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpclattice_service_network

[@@@deriving.end]

let aws_vpclattice_service_network ?id ?tags
    ~service_network_identifier () : aws_vpclattice_service_network =
  { id; service_network_identifier; tags }

type t = {
  arn : string prop;
  auth_type : string prop;
  created_at : string prop;
  id : string prop;
  last_updated_at : string prop;
  name : string prop;
  number_of_associated_services : float prop;
  number_of_associated_vpcs : float prop;
  service_network_identifier : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ~service_network_identifier __id =
  let __type = "aws_vpclattice_service_network" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       auth_type = Prop.computed __type __id "auth_type";
       created_at = Prop.computed __type __id "created_at";
       id = Prop.computed __type __id "id";
       last_updated_at = Prop.computed __type __id "last_updated_at";
       name = Prop.computed __type __id "name";
       number_of_associated_services =
         Prop.computed __type __id "number_of_associated_services";
       number_of_associated_vpcs =
         Prop.computed __type __id "number_of_associated_vpcs";
       service_network_identifier =
         Prop.computed __type __id "service_network_identifier";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpclattice_service_network
        (aws_vpclattice_service_network ?id ?tags
           ~service_network_identifier ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~service_network_identifier __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~service_network_identifier __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
