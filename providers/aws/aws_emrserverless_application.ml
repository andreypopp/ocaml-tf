(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type auto_start_configuration = {
  enabled : bool prop option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** auto_start_configuration *)

type auto_stop_configuration = {
  enabled : bool prop option; [@option]  (** enabled *)
  idle_timeout_minutes : float prop option; [@option]
      (** idle_timeout_minutes *)
}
[@@deriving yojson_of]
(** auto_stop_configuration *)

type image_configuration = {
  image_uri : string prop;  (** image_uri *)
}
[@@deriving yojson_of]
(** image_configuration *)

type initial_capacity__initial_capacity_config__worker_configuration = {
  cpu : string prop;  (** cpu *)
  disk : string prop option; [@option]  (** disk *)
  memory : string prop;  (** memory *)
}
[@@deriving yojson_of]
(** initial_capacity__initial_capacity_config__worker_configuration *)

type initial_capacity__initial_capacity_config = {
  worker_count : float prop;  (** worker_count *)
  worker_configuration :
    initial_capacity__initial_capacity_config__worker_configuration
    list;
}
[@@deriving yojson_of]
(** initial_capacity__initial_capacity_config *)

type initial_capacity = {
  initial_capacity_type : string prop;  (** initial_capacity_type *)
  initial_capacity_config :
    initial_capacity__initial_capacity_config list;
}
[@@deriving yojson_of]
(** initial_capacity *)

type maximum_capacity = {
  cpu : string prop;  (** cpu *)
  disk : string prop option; [@option]  (** disk *)
  memory : string prop;  (** memory *)
}
[@@deriving yojson_of]
(** maximum_capacity *)

type network_configuration = {
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  subnet_ids : string prop list option; [@option]  (** subnet_ids *)
}
[@@deriving yojson_of]
(** network_configuration *)

type aws_emrserverless_application = {
  architecture : string prop option; [@option]  (** architecture *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  release_label : string prop;  (** release_label *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop; [@key "type"]  (** type *)
  auto_start_configuration : auto_start_configuration list;
  auto_stop_configuration : auto_stop_configuration list;
  image_configuration : image_configuration list;
  initial_capacity : initial_capacity list;
  maximum_capacity : maximum_capacity list;
  network_configuration : network_configuration list;
}
[@@deriving yojson_of]
(** aws_emrserverless_application *)

let auto_start_configuration ?enabled () : auto_start_configuration =
  { enabled }

let auto_stop_configuration ?enabled ?idle_timeout_minutes () :
    auto_stop_configuration =
  { enabled; idle_timeout_minutes }

let image_configuration ~image_uri () : image_configuration =
  { image_uri }

let initial_capacity__initial_capacity_config__worker_configuration
    ?disk ~cpu ~memory () :
    initial_capacity__initial_capacity_config__worker_configuration =
  { cpu; disk; memory }

let initial_capacity__initial_capacity_config ~worker_count
    ~worker_configuration () :
    initial_capacity__initial_capacity_config =
  { worker_count; worker_configuration }

let initial_capacity ~initial_capacity_type ~initial_capacity_config
    () : initial_capacity =
  { initial_capacity_type; initial_capacity_config }

let maximum_capacity ?disk ~cpu ~memory () : maximum_capacity =
  { cpu; disk; memory }

let network_configuration ?security_group_ids ?subnet_ids () :
    network_configuration =
  { security_group_ids; subnet_ids }

let aws_emrserverless_application ?architecture ?id ?tags ?tags_all
    ~name ~release_label ~type_ ~auto_start_configuration
    ~auto_stop_configuration ~image_configuration ~initial_capacity
    ~maximum_capacity ~network_configuration () :
    aws_emrserverless_application =
  {
    architecture;
    id;
    name;
    release_label;
    tags;
    tags_all;
    type_;
    auto_start_configuration;
    auto_stop_configuration;
    image_configuration;
    initial_capacity;
    maximum_capacity;
    network_configuration;
  }

type t = {
  architecture : string prop;
  arn : string prop;
  id : string prop;
  name : string prop;
  release_label : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let register ?tf_module ?architecture ?id ?tags ?tags_all ~name
    ~release_label ~type_ ~auto_start_configuration
    ~auto_stop_configuration ~image_configuration ~initial_capacity
    ~maximum_capacity ~network_configuration __resource_id =
  let __resource_type = "aws_emrserverless_application" in
  let __resource =
    aws_emrserverless_application ?architecture ?id ?tags ?tags_all
      ~name ~release_label ~type_ ~auto_start_configuration
      ~auto_stop_configuration ~image_configuration ~initial_capacity
      ~maximum_capacity ~network_configuration ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_emrserverless_application __resource);
  let __resource_attributes =
    ({
       architecture =
         Prop.computed __resource_type __resource_id "architecture";
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       release_label =
         Prop.computed __resource_type __resource_id "release_label";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
