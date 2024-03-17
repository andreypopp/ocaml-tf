(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_directory_service_directory__connect_settings = {
  availability_zones : string prop list;  (** availability_zones *)
  connect_ips : string prop list;  (** connect_ips *)
  customer_dns_ips : string prop list;  (** customer_dns_ips *)
  customer_username : string prop;  (** customer_username *)
  subnet_ids : string prop list;  (** subnet_ids *)
  vpc_id : string prop;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_directory_service_directory__connect_settings *)

type aws_directory_service_directory__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_directory_service_directory__timeouts *)

type aws_directory_service_directory__vpc_settings = {
  availability_zones : string prop list;  (** availability_zones *)
  subnet_ids : string prop list;  (** subnet_ids *)
  vpc_id : string prop;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_directory_service_directory__vpc_settings *)

type aws_directory_service_directory = {
  alias : string prop option; [@option]  (** alias *)
  description : string prop option; [@option]  (** description *)
  desired_number_of_domain_controllers : float prop option; [@option]
      (** desired_number_of_domain_controllers *)
  edition : string prop option; [@option]  (** edition *)
  enable_sso : bool prop option; [@option]  (** enable_sso *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  password : string prop;  (** password *)
  short_name : string prop option; [@option]  (** short_name *)
  size : string prop option; [@option]  (** size *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
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
