(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_logging_log_view = {
  bucket : string prop;  (** The bucket of the resource *)
  description : string prop option; [@option]
      (** Describes this view. *)
  filter : string prop option; [@option]
      (** Filter that restricts which log entries in a bucket are visible in this view. Filters are restricted to be a logical AND of ==/!= of any of the following: - originating project/folder/organization/billing account. - resource type - log id For example: SOURCE(projects/myproject) AND resource.type = gce_instance AND LOG_ID(stdout) *)
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]
      (** The location of the resource. The supported locations are: global, us-central1, us-east1, us-west1, asia-east1, europe-west1. *)
  name : string prop;
      (** The resource name of the view. For example: \'projects/my-project/locations/global/buckets/my-bucket/views/my-view\' *)
  parent : string prop option; [@option]
      (** The parent of the resource. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_logging_log_view *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_logging_log_view ?description ?filter ?id ?location
    ?parent ?timeouts ~bucket ~name () : google_logging_log_view =
  {
    bucket;
    description;
    filter;
    id;
    location;
    name;
    parent;
    timeouts;
  }

type t = {
  bucket : string prop;
  create_time : string prop;
  description : string prop;
  filter : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  parent : string prop;
  update_time : string prop;
}

let make ?description ?filter ?id ?location ?parent ?timeouts ~bucket
    ~name __id =
  let __type = "google_logging_log_view" in
  let __attrs =
    ({
       bucket = Prop.computed __type __id "bucket";
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       filter = Prop.computed __type __id "filter";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_logging_log_view
        (google_logging_log_view ?description ?filter ?id ?location
           ?parent ?timeouts ~bucket ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?filter ?id ?location ?parent
    ?timeouts ~bucket ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?filter ?id ?location ?parent ?timeouts ~bucket
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
