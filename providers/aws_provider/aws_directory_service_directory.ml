(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_directory_service_directory__connect_settings = {
  availability_zones : string list;  (** availability_zones *)
  connect_ips : string list;  (** connect_ips *)
  customer_dns_ips : string list;  (** customer_dns_ips *)
  customer_username : string;  (** customer_username *)
  subnet_ids : string list;  (** subnet_ids *)
  vpc_id : string;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_directory_service_directory__connect_settings *)

type aws_directory_service_directory__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_directory_service_directory__timeouts *)

type aws_directory_service_directory__vpc_settings = {
  availability_zones : string list;  (** availability_zones *)
  subnet_ids : string list;  (** subnet_ids *)
  vpc_id : string;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_directory_service_directory__vpc_settings *)

type aws_directory_service_directory = {
  alias : string option; [@option]  (** alias *)
  description : string option; [@option]  (** description *)
  desired_number_of_domain_controllers : float option; [@option]
      (** desired_number_of_domain_controllers *)
  edition : string option; [@option]  (** edition *)
  enable_sso : bool option; [@option]  (** enable_sso *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  password : string;  (** password *)
  short_name : string option; [@option]  (** short_name *)
  size : string option; [@option]  (** size *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  connect_settings :
    aws_directory_service_directory__connect_settings list;
  timeouts : aws_directory_service_directory__timeouts option;
  vpc_settings : aws_directory_service_directory__vpc_settings list;
}
[@@deriving yojson_of]
(** aws_directory_service_directory *)

let aws_directory_service_directory ?alias ?description
    ?desired_number_of_domain_controllers ?edition ?enable_sso ?id
    ?short_name ?size ?tags ?tags_all ?type_ ?timeouts ~name
    ~password ~connect_settings ~vpc_settings __resource_id =
  let __resource_type = "aws_directory_service_directory" in
  let __resource =
    {
      alias;
      description;
      desired_number_of_domain_controllers;
      edition;
      enable_sso;
      id;
      name;
      password;
      short_name;
      size;
      tags;
      tags_all;
      type_;
      connect_settings;
      timeouts;
      vpc_settings;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_directory_service_directory __resource);
  ()
