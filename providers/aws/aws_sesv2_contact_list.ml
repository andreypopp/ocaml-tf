(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type topic = {
  default_subscription_status : string prop;
      (** default_subscription_status *)
  description : string prop option; [@option]  (** description *)
  display_name : string prop;  (** display_name *)
  topic_name : string prop;  (** topic_name *)
}
[@@deriving yojson_of]
(** topic *)

type aws_sesv2_contact_list = {
  contact_list_name : string prop;  (** contact_list_name *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  topic : topic list;
}
[@@deriving yojson_of]
(** aws_sesv2_contact_list *)

let topic ?description ~default_subscription_status ~display_name
    ~topic_name () : topic =
  {
    default_subscription_status;
    description;
    display_name;
    topic_name;
  }

let aws_sesv2_contact_list ?description ?id ?tags ?tags_all
    ~contact_list_name ~topic () : aws_sesv2_contact_list =
  { contact_list_name; description; id; tags; tags_all; topic }

type t = {
  arn : string prop;
  contact_list_name : string prop;
  created_timestamp : string prop;
  description : string prop;
  id : string prop;
  last_updated_timestamp : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?description ?id ?tags ?tags_all
    ~contact_list_name ~topic __resource_id =
  let __resource_type = "aws_sesv2_contact_list" in
  let __resource =
    aws_sesv2_contact_list ?description ?id ?tags ?tags_all
      ~contact_list_name ~topic ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sesv2_contact_list __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       contact_list_name =
         Prop.computed __resource_type __resource_id
           "contact_list_name";
       created_timestamp =
         Prop.computed __resource_type __resource_id
           "created_timestamp";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       last_updated_timestamp =
         Prop.computed __resource_type __resource_id
           "last_updated_timestamp";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
