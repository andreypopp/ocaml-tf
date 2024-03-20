(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity_provider = {
  saml_metadata : string prop;  (** saml_metadata *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity_provider *)

type network = {
  security_group_ids : string prop list;  (** security_group_ids *)
  subnet_ids : string prop list;  (** subnet_ids *)
  vpc_id : string prop;  (** vpc_id *)
}
[@@deriving yojson_of]
(** network *)

type aws_worklink_fleet = {
  audit_stream_arn : string prop option; [@option]
      (** audit_stream_arn *)
  device_ca_certificate : string prop option; [@option]
      (** device_ca_certificate *)
  display_name : string prop option; [@option]  (** display_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  optimize_for_end_user_location : bool prop option; [@option]
      (** optimize_for_end_user_location *)
  identity_provider : identity_provider list;
  network : network list;
}
[@@deriving yojson_of]
(** aws_worklink_fleet *)

let identity_provider ~saml_metadata ~type_ () : identity_provider =
  { saml_metadata; type_ }

let network ~security_group_ids ~subnet_ids ~vpc_id () : network =
  { security_group_ids; subnet_ids; vpc_id }

let aws_worklink_fleet ?audit_stream_arn ?device_ca_certificate
    ?display_name ?id ?optimize_for_end_user_location ~name
    ~identity_provider ~network () : aws_worklink_fleet =
  {
    audit_stream_arn;
    device_ca_certificate;
    display_name;
    id;
    name;
    optimize_for_end_user_location;
    identity_provider;
    network;
  }

type t = {
  arn : string prop;
  audit_stream_arn : string prop;
  company_code : string prop;
  created_time : string prop;
  device_ca_certificate : string prop;
  display_name : string prop;
  id : string prop;
  last_updated_time : string prop;
  name : string prop;
  optimize_for_end_user_location : bool prop;
}

let make ?audit_stream_arn ?device_ca_certificate ?display_name ?id
    ?optimize_for_end_user_location ~name ~identity_provider ~network
    __id =
  let __type = "aws_worklink_fleet" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       audit_stream_arn =
         Prop.computed __type __id "audit_stream_arn";
       company_code = Prop.computed __type __id "company_code";
       created_time = Prop.computed __type __id "created_time";
       device_ca_certificate =
         Prop.computed __type __id "device_ca_certificate";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       last_updated_time =
         Prop.computed __type __id "last_updated_time";
       name = Prop.computed __type __id "name";
       optimize_for_end_user_location =
         Prop.computed __type __id "optimize_for_end_user_location";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_worklink_fleet
        (aws_worklink_fleet ?audit_stream_arn ?device_ca_certificate
           ?display_name ?id ?optimize_for_end_user_location ~name
           ~identity_provider ~network ());
    attrs = __attrs;
  }

let register ?tf_module ?audit_stream_arn ?device_ca_certificate
    ?display_name ?id ?optimize_for_end_user_location ~name
    ~identity_provider ~network __id =
  let (r : _ Tf_core.resource) =
    make ?audit_stream_arn ?device_ca_certificate ?display_name ?id
      ?optimize_for_end_user_location ~name ~identity_provider
      ~network __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
