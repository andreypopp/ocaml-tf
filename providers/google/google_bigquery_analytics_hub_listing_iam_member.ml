(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** condition *)

type google_bigquery_analytics_hub_listing_iam_member = {
  data_exchange_id : string prop;  (** data_exchange_id *)
  id : string prop option; [@option]  (** id *)
  listing_id : string prop;  (** listing_id *)
  location : string prop option; [@option]  (** location *)
  member : string prop;  (** member *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_bigquery_analytics_hub_listing_iam_member *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_bigquery_analytics_hub_listing_iam_member ?id ?location
    ?project ~data_exchange_id ~listing_id ~member ~role ~condition
    () : google_bigquery_analytics_hub_listing_iam_member =
  {
    data_exchange_id;
    id;
    listing_id;
    location;
    member;
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
  member : string prop;
  project : string prop;
  role : string prop;
}

let make ?id ?location ?project ~data_exchange_id ~listing_id ~member
    ~role ~condition __id =
  let __type = "google_bigquery_analytics_hub_listing_iam_member" in
  let __attrs =
    ({
       data_exchange_id =
         Prop.computed __type __id "data_exchange_id";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       listing_id = Prop.computed __type __id "listing_id";
       location = Prop.computed __type __id "location";
       member = Prop.computed __type __id "member";
       project = Prop.computed __type __id "project";
       role = Prop.computed __type __id "role";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_bigquery_analytics_hub_listing_iam_member
        (google_bigquery_analytics_hub_listing_iam_member ?id
           ?location ?project ~data_exchange_id ~listing_id ~member
           ~role ~condition ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location ?project ~data_exchange_id
    ~listing_id ~member ~role ~condition __id =
  let (r : _ Tf_core.resource) =
    make ?id ?location ?project ~data_exchange_id ~listing_id ~member
      ~role ~condition __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
