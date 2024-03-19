(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type compute_capacity = {
  desired_instances : float prop;  (** desired_instances *)
}
[@@deriving yojson_of]
(** compute_capacity *)

type domain_join_info = {
  directory_name : string prop option; [@option]
      (** directory_name *)
  organizational_unit_distinguished_name : string prop option;
      [@option]
      (** organizational_unit_distinguished_name *)
}
[@@deriving yojson_of]
(** domain_join_info *)

type vpc_config = {
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  subnet_ids : string prop list option; [@option]  (** subnet_ids *)
}
[@@deriving yojson_of]
(** vpc_config *)

type aws_appstream_fleet = {
  description : string prop option; [@option]  (** description *)
  disconnect_timeout_in_seconds : float prop option; [@option]
      (** disconnect_timeout_in_seconds *)
  display_name : string prop option; [@option]  (** display_name *)
  enable_default_internet_access : bool prop option; [@option]
      (** enable_default_internet_access *)
  fleet_type : string prop option; [@option]  (** fleet_type *)
  iam_role_arn : string prop option; [@option]  (** iam_role_arn *)
  id : string prop option; [@option]  (** id *)
  idle_disconnect_timeout_in_seconds : float prop option; [@option]
      (** idle_disconnect_timeout_in_seconds *)
  image_arn : string prop option; [@option]  (** image_arn *)
  image_name : string prop option; [@option]  (** image_name *)
  instance_type : string prop;  (** instance_type *)
  max_user_duration_in_seconds : float prop option; [@option]
      (** max_user_duration_in_seconds *)
  name : string prop;  (** name *)
  stream_view : string prop option; [@option]  (** stream_view *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  compute_capacity : compute_capacity list;
  domain_join_info : domain_join_info list;
  vpc_config : vpc_config list;
}
[@@deriving yojson_of]
(** aws_appstream_fleet *)

let compute_capacity ~desired_instances () : compute_capacity =
  { desired_instances }

let domain_join_info ?directory_name
    ?organizational_unit_distinguished_name () : domain_join_info =
  { directory_name; organizational_unit_distinguished_name }

let vpc_config ?security_group_ids ?subnet_ids () : vpc_config =
  { security_group_ids; subnet_ids }

let aws_appstream_fleet ?description ?disconnect_timeout_in_seconds
    ?display_name ?enable_default_internet_access ?fleet_type
    ?iam_role_arn ?id ?idle_disconnect_timeout_in_seconds ?image_arn
    ?image_name ?max_user_duration_in_seconds ?stream_view ?tags
    ?tags_all ~instance_type ~name ~compute_capacity
    ~domain_join_info ~vpc_config () : aws_appstream_fleet =
  {
    description;
    disconnect_timeout_in_seconds;
    display_name;
    enable_default_internet_access;
    fleet_type;
    iam_role_arn;
    id;
    idle_disconnect_timeout_in_seconds;
    image_arn;
    image_name;
    instance_type;
    max_user_duration_in_seconds;
    name;
    stream_view;
    tags;
    tags_all;
    compute_capacity;
    domain_join_info;
    vpc_config;
  }

type t = {
  arn : string prop;
  created_time : string prop;
  description : string prop;
  disconnect_timeout_in_seconds : float prop;
  display_name : string prop;
  enable_default_internet_access : bool prop;
  fleet_type : string prop;
  iam_role_arn : string prop;
  id : string prop;
  idle_disconnect_timeout_in_seconds : float prop;
  image_arn : string prop;
  image_name : string prop;
  instance_type : string prop;
  max_user_duration_in_seconds : float prop;
  name : string prop;
  state : string prop;
  stream_view : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?description ?disconnect_timeout_in_seconds
    ?display_name ?enable_default_internet_access ?fleet_type
    ?iam_role_arn ?id ?idle_disconnect_timeout_in_seconds ?image_arn
    ?image_name ?max_user_duration_in_seconds ?stream_view ?tags
    ?tags_all ~instance_type ~name ~compute_capacity
    ~domain_join_info ~vpc_config __resource_id =
  let __resource_type = "aws_appstream_fleet" in
  let __resource =
    aws_appstream_fleet ?description ?disconnect_timeout_in_seconds
      ?display_name ?enable_default_internet_access ?fleet_type
      ?iam_role_arn ?id ?idle_disconnect_timeout_in_seconds
      ?image_arn ?image_name ?max_user_duration_in_seconds
      ?stream_view ?tags ?tags_all ~instance_type ~name
      ~compute_capacity ~domain_join_info ~vpc_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appstream_fleet __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       created_time =
         Prop.computed __resource_type __resource_id "created_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       disconnect_timeout_in_seconds =
         Prop.computed __resource_type __resource_id
           "disconnect_timeout_in_seconds";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       enable_default_internet_access =
         Prop.computed __resource_type __resource_id
           "enable_default_internet_access";
       fleet_type =
         Prop.computed __resource_type __resource_id "fleet_type";
       iam_role_arn =
         Prop.computed __resource_type __resource_id "iam_role_arn";
       id = Prop.computed __resource_type __resource_id "id";
       idle_disconnect_timeout_in_seconds =
         Prop.computed __resource_type __resource_id
           "idle_disconnect_timeout_in_seconds";
       image_arn =
         Prop.computed __resource_type __resource_id "image_arn";
       image_name =
         Prop.computed __resource_type __resource_id "image_name";
       instance_type =
         Prop.computed __resource_type __resource_id "instance_type";
       max_user_duration_in_seconds =
         Prop.computed __resource_type __resource_id
           "max_user_duration_in_seconds";
       name = Prop.computed __resource_type __resource_id "name";
       state = Prop.computed __resource_type __resource_id "state";
       stream_view =
         Prop.computed __resource_type __resource_id "stream_view";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
