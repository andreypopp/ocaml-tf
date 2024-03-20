(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vpc_endpoint__network_interface = {
  availability_zone : string prop;  (** availability_zone *)
  network_interface_id : string prop;  (** network_interface_id *)
  private_ip_address : string prop;  (** private_ip_address *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]

type vpc_endpoint = {
  network_interface : vpc_endpoint__network_interface list;
      (** network_interface *)
  vpc_endpoint_id : string prop;  (** vpc_endpoint_id *)
  vpc_id : string prop;  (** vpc_id *)
}
[@@deriving yojson_of]

type aws_redshiftserverless_endpoint_access = {
  endpoint_name : string prop;  (** endpoint_name *)
  id : string prop option; [@option]  (** id *)
  owner_account : string prop option; [@option]  (** owner_account *)
  subnet_ids : string prop list;  (** subnet_ids *)
  vpc_security_group_ids : string prop list option; [@option]
      (** vpc_security_group_ids *)
  workgroup_name : string prop;  (** workgroup_name *)
}
[@@deriving yojson_of]
(** aws_redshiftserverless_endpoint_access *)

let aws_redshiftserverless_endpoint_access ?id ?owner_account
    ?vpc_security_group_ids ~endpoint_name ~subnet_ids
    ~workgroup_name () : aws_redshiftserverless_endpoint_access =
  {
    endpoint_name;
    id;
    owner_account;
    subnet_ids;
    vpc_security_group_ids;
    workgroup_name;
  }

type t = {
  address : string prop;
  arn : string prop;
  endpoint_name : string prop;
  id : string prop;
  owner_account : string prop;
  port : float prop;
  subnet_ids : string list prop;
  vpc_endpoint : vpc_endpoint list prop;
  vpc_security_group_ids : string list prop;
  workgroup_name : string prop;
}

let make ?id ?owner_account ?vpc_security_group_ids ~endpoint_name
    ~subnet_ids ~workgroup_name __id =
  let __type = "aws_redshiftserverless_endpoint_access" in
  let __attrs =
    ({
       address = Prop.computed __type __id "address";
       arn = Prop.computed __type __id "arn";
       endpoint_name = Prop.computed __type __id "endpoint_name";
       id = Prop.computed __type __id "id";
       owner_account = Prop.computed __type __id "owner_account";
       port = Prop.computed __type __id "port";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       vpc_endpoint = Prop.computed __type __id "vpc_endpoint";
       vpc_security_group_ids =
         Prop.computed __type __id "vpc_security_group_ids";
       workgroup_name = Prop.computed __type __id "workgroup_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshiftserverless_endpoint_access
        (aws_redshiftserverless_endpoint_access ?id ?owner_account
           ?vpc_security_group_ids ~endpoint_name ~subnet_ids
           ~workgroup_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?owner_account ?vpc_security_group_ids
    ~endpoint_name ~subnet_ids ~workgroup_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?owner_account ?vpc_security_group_ids ~endpoint_name
      ~subnet_ids ~workgroup_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
