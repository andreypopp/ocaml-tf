(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** condition *)

type google_bigquery_analytics_hub_listing_iam_binding = {
  data_exchange_id : string prop;  (** data_exchange_id *)
  id : string prop option; [@option]  (** id *)
  listing_id : string prop;  (** listing_id *)
  location : string prop option; [@option]  (** location *)
  members : string prop list;  (** members *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_bigquery_analytics_hub_listing_iam_binding *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_bigquery_analytics_hub_listing_iam_binding ?id ?location
    ?project ~data_exchange_id ~listing_id ~members ~role ~condition
    () : google_bigquery_analytics_hub_listing_iam_binding =
  {
    data_exchange_id;
    id;
    listing_id;
    location;
    members;
    project;
    role;
    condition;
  }

type t = {
  data_exchange_id : string prop;
  etag : string prop;
  id : string prop;
  listing_id : string prop;
  location : string prop;
  members : string list prop;
  project : string prop;
  role : string prop;
}

let register ?tf_module ?id ?location ?project ~data_exchange_id
    ~listing_id ~members ~role ~condition __resource_id =
  let __resource_type =
    "google_bigquery_analytics_hub_listing_iam_binding"
  in
  let __resource =
    google_bigquery_analytics_hub_listing_iam_binding ?id ?location
      ?project ~data_exchange_id ~listing_id ~members ~role
      ~condition ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigquery_analytics_hub_listing_iam_binding
       __resource);
  let __resource_attributes =
    ({
       data_exchange_id =
         Prop.computed __resource_type __resource_id
           "data_exchange_id";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       listing_id =
         Prop.computed __resource_type __resource_id "listing_id";
       location =
         Prop.computed __resource_type __resource_id "location";
       members =
         Prop.computed __resource_type __resource_id "members";
       project =
         Prop.computed __resource_type __resource_id "project";
       role = Prop.computed __resource_type __resource_id "role";
     }
      : t)
  in
  __resource_attributes
