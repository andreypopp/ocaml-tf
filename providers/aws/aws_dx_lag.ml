(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dx_lag = {
  connection_id : string prop option; [@option]  (** connection_id *)
  connections_bandwidth : string prop;  (** connections_bandwidth *)
  force_destroy : bool prop option; [@option]  (** force_destroy *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  provider_name : string prop option; [@option]  (** provider_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_dx_lag *)

let aws_dx_lag ?connection_id ?force_destroy ?id ?provider_name ?tags
    ?tags_all ~connections_bandwidth ~location ~name () : aws_dx_lag
    =
  {
    connection_id;
    connections_bandwidth;
    force_destroy;
    id;
    location;
    name;
    provider_name;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  connection_id : string prop;
  connections_bandwidth : string prop;
  force_destroy : bool prop;
  has_logical_redundancy : string prop;
  id : string prop;
  jumbo_frame_capable : bool prop;
  location : string prop;
  name : string prop;
  owner_account_id : string prop;
  provider_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?connection_id ?force_destroy ?id
    ?provider_name ?tags ?tags_all ~connections_bandwidth ~location
    ~name __resource_id =
  let __resource_type = "aws_dx_lag" in
  let __resource =
    aws_dx_lag ?connection_id ?force_destroy ?id ?provider_name ?tags
      ?tags_all ~connections_bandwidth ~location ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dx_lag __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       connection_id =
         Prop.computed __resource_type __resource_id "connection_id";
       connections_bandwidth =
         Prop.computed __resource_type __resource_id
           "connections_bandwidth";
       force_destroy =
         Prop.computed __resource_type __resource_id "force_destroy";
       has_logical_redundancy =
         Prop.computed __resource_type __resource_id
           "has_logical_redundancy";
       id = Prop.computed __resource_type __resource_id "id";
       jumbo_frame_capable =
         Prop.computed __resource_type __resource_id
           "jumbo_frame_capable";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       owner_account_id =
         Prop.computed __resource_type __resource_id
           "owner_account_id";
       provider_name =
         Prop.computed __resource_type __resource_id "provider_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
