(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

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
  enhanced_vpc_routing : bool option; [@option]
      (** enhanced_vpc_routing *)
  max_capacity : float option; [@option]  (** max_capacity *)
  namespace_name : string;  (** namespace_name *)
  publicly_accessible : bool option; [@option]
      (** publicly_accessible *)
  tags : (string * string) list option; [@option]  (** tags *)
  workgroup_name : string;  (** workgroup_name *)
  config_parameter :
    aws_redshiftserverless_workgroup__config_parameter list;
  timeouts : aws_redshiftserverless_workgroup__timeouts option;
}
[@@deriving yojson_of]
(** aws_redshiftserverless_workgroup *)

let aws_redshiftserverless_workgroup ?enhanced_vpc_routing
    ?max_capacity ?publicly_accessible ?tags ?timeouts
    ~namespace_name ~workgroup_name ~config_parameter __resource_id =
  let __resource_type = "aws_redshiftserverless_workgroup" in
  let __resource =
    {
      enhanced_vpc_routing;
      max_capacity;
      namespace_name;
      publicly_accessible;
      tags;
      workgroup_name;
      config_parameter;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshiftserverless_workgroup __resource);
  ()
