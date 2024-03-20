(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ec2_instance_connect_endpoint = {
  preserve_client_ip : bool prop option; [@option]
      (** preserve_client_ip *)
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  subnet_id : string prop;  (** subnet_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ec2_instance_connect_endpoint *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_ec2_instance_connect_endpoint ?preserve_client_ip
    ?security_group_ids ?tags ?timeouts ~subnet_id () :
    aws_ec2_instance_connect_endpoint =
  {
    preserve_client_ip;
    security_group_ids;
    subnet_id;
    tags;
    timeouts;
  }

type t = {
  arn : string prop;
  availability_zone : string prop;
  dns_name : string prop;
  fips_dns_name : string prop;
  id : string prop;
  network_interface_ids : string list prop;
  owner_id : string prop;
  preserve_client_ip : bool prop;
  security_group_ids : string list prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

let make ?preserve_client_ip ?security_group_ids ?tags ?timeouts
    ~subnet_id __id =
  let __type = "aws_ec2_instance_connect_endpoint" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       availability_zone =
         Prop.computed __type __id "availability_zone";
       dns_name = Prop.computed __type __id "dns_name";
       fips_dns_name = Prop.computed __type __id "fips_dns_name";
       id = Prop.computed __type __id "id";
       network_interface_ids =
         Prop.computed __type __id "network_interface_ids";
       owner_id = Prop.computed __type __id "owner_id";
       preserve_client_ip =
         Prop.computed __type __id "preserve_client_ip";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       subnet_id = Prop.computed __type __id "subnet_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_instance_connect_endpoint
        (aws_ec2_instance_connect_endpoint ?preserve_client_ip
           ?security_group_ids ?tags ?timeouts ~subnet_id ());
    attrs = __attrs;
  }

let register ?tf_module ?preserve_client_ip ?security_group_ids ?tags
    ?timeouts ~subnet_id __id =
  let (r : _ Tf_core.resource) =
    make ?preserve_client_ip ?security_group_ids ?tags ?timeouts
      ~subnet_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
