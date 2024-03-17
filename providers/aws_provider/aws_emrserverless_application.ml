(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_emrserverless_application__auto_start_configuration = {
  enabled : bool option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** aws_emrserverless_application__auto_start_configuration *)

type aws_emrserverless_application__auto_stop_configuration = {
  enabled : bool option; [@option]  (** enabled *)
  idle_timeout_minutes : float option; [@option]
      (** idle_timeout_minutes *)
}
[@@deriving yojson_of]
(** aws_emrserverless_application__auto_stop_configuration *)

type aws_emrserverless_application__image_configuration = {
  image_uri : string;  (** image_uri *)
}
[@@deriving yojson_of]
(** aws_emrserverless_application__image_configuration *)

type aws_emrserverless_application__initial_capacity__initial_capacity_config__worker_configuration = {
  cpu : string;  (** cpu *)
  disk : string option; [@option]  (** disk *)
  memory : string;  (** memory *)
}
[@@deriving yojson_of]
(** aws_emrserverless_application__initial_capacity__initial_capacity_config__worker_configuration *)

type aws_emrserverless_application__initial_capacity__initial_capacity_config = {
  worker_count : float;  (** worker_count *)
  worker_configuration :
    aws_emrserverless_application__initial_capacity__initial_capacity_config__worker_configuration
    list;
}
[@@deriving yojson_of]
(** aws_emrserverless_application__initial_capacity__initial_capacity_config *)

type aws_emrserverless_application__initial_capacity = {
  initial_capacity_type : string;  (** initial_capacity_type *)
  initial_capacity_config :
    aws_emrserverless_application__initial_capacity__initial_capacity_config
    list;
}
[@@deriving yojson_of]
(** aws_emrserverless_application__initial_capacity *)

type aws_emrserverless_application__maximum_capacity = {
  cpu : string;  (** cpu *)
  disk : string option; [@option]  (** disk *)
  memory : string;  (** memory *)
}
[@@deriving yojson_of]
(** aws_emrserverless_application__maximum_capacity *)

type aws_emrserverless_application__network_configuration = {
  security_group_ids : string list option; [@option]
      (** security_group_ids *)
  subnet_ids : string list option; [@option]  (** subnet_ids *)
}
[@@deriving yojson_of]
(** aws_emrserverless_application__network_configuration *)

type aws_emrserverless_application = {
  architecture : string option; [@option]  (** architecture *)
  name : string;  (** name *)
  release_label : string;  (** release_label *)
  tags : (string * string) list option; [@option]  (** tags *)
  type_ : string; [@key "type"]  (** type *)
  auto_start_configuration :
    aws_emrserverless_application__auto_start_configuration list;
  auto_stop_configuration :
    aws_emrserverless_application__auto_stop_configuration list;
  image_configuration :
    aws_emrserverless_application__image_configuration list;
  initial_capacity :
    aws_emrserverless_application__initial_capacity list;
  maximum_capacity :
    aws_emrserverless_application__maximum_capacity list;
  network_configuration :
    aws_emrserverless_application__network_configuration list;
}
[@@deriving yojson_of]
(** aws_emrserverless_application *)

let aws_emrserverless_application ?architecture ?tags ~name
    ~release_label ~type_ ~auto_start_configuration
    ~auto_stop_configuration ~image_configuration ~initial_capacity
    ~maximum_capacity ~network_configuration __resource_id =
  let __resource_type = "aws_emrserverless_application" in
  let __resource =
    {
      architecture;
      name;
      release_label;
      tags;
      type_;
      auto_start_configuration;
      auto_stop_configuration;
      image_configuration;
      initial_capacity;
      maximum_capacity;
      network_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_emrserverless_application __resource);
  ()
