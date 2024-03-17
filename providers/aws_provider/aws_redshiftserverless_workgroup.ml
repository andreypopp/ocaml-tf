(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshiftserverless_workgroup__config_parameter = {
  parameter_key : string;  (** parameter_key *)
  parameter_value : string;  (** parameter_value *)
}
[@@deriving yojson_of]
(** aws_redshiftserverless_workgroup__config_parameter *)

type aws_redshiftserverless_workgroup__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_redshiftserverless_workgroup__timeouts *)

type aws_redshiftserverless_workgroup__endpoint__vpc_endpoint__network_interface = {
  availability_zone : string;  (** availability_zone *)
  network_interface_id : string;  (** network_interface_id *)
  private_ip_address : string;  (** private_ip_address *)
  subnet_id : string;  (** subnet_id *)
}
[@@deriving yojson_of]

type aws_redshiftserverless_workgroup__endpoint__vpc_endpoint = {
  network_interface :
    aws_redshiftserverless_workgroup__endpoint__vpc_endpoint__network_interface
    list;
      (** network_interface *)
  vpc_endpoint_id : string;  (** vpc_endpoint_id *)
  vpc_id : string;  (** vpc_id *)
}
[@@deriving yojson_of]

type aws_redshiftserverless_workgroup__endpoint = {
  address : string;  (** address *)
  port : float;  (** port *)
  vpc_endpoint :
    aws_redshiftserverless_workgroup__endpoint__vpc_endpoint list;
      (** vpc_endpoint *)
}
[@@deriving yojson_of]

type aws_redshiftserverless_workgroup = {
  base_capacity : float option; [@option]  (** base_capacity *)
  enhanced_vpc_routing : bool option; [@option]
      (** enhanced_vpc_routing *)
  id : string option; [@option]  (** id *)
  max_capacity : float option; [@option]  (** max_capacity *)
  namespace_name : string;  (** namespace_name *)
  port : float option; [@option]  (** port *)
  publicly_accessible : bool option; [@option]
      (** publicly_accessible *)
  security_group_ids : string list option; [@option]
      (** security_group_ids *)
  subnet_ids : string list option; [@option]  (** subnet_ids *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  workgroup_name : string;  (** workgroup_name *)
  config_parameter :
    aws_redshiftserverless_workgroup__config_parameter list;
  timeouts : aws_redshiftserverless_workgroup__timeouts option;
}
[@@deriving yojson_of]
(** aws_redshiftserverless_workgroup *)

let aws_redshiftserverless_workgroup ?base_capacity
    ?enhanced_vpc_routing ?id ?max_capacity ?port
    ?publicly_accessible ?security_group_ids ?subnet_ids ?tags
    ?tags_all ?timeouts ~namespace_name ~workgroup_name
    ~config_parameter __resource_id =
  let __resource_type = "aws_redshiftserverless_workgroup" in
  let __resource =
    {
      base_capacity;
      enhanced_vpc_routing;
      id;
      max_capacity;
      namespace_name;
      port;
      publicly_accessible;
      security_group_ids;
      subnet_ids;
      tags;
      tags_all;
      workgroup_name;
      config_parameter;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshiftserverless_workgroup __resource);
  ()
