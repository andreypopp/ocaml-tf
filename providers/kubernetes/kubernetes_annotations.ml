(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metadata = {
  name : string prop;  (** The name of the resource. *)
  namespace : string prop option; [@option]
      (** The namespace of the resource. *)
}
[@@deriving yojson_of]
(** metadata *)

type kubernetes_annotations = {
  annotations : (string * string prop) list option; [@option]
      (** A map of annotations to apply to the resource. *)
  api_version : string prop;
      (** The apiVersion of the resource to annotate. *)
  field_manager : string prop option; [@option]
      (** Set the name of the field manager for the specified labels. *)
  force : bool prop option; [@option]
      (** Force overwriting annotations that were created or edited outside of Terraform. *)
  id : string prop option; [@option]  (** id *)
  kind : string prop;  (** The kind of the resource to annotate. *)
  template_annotations : (string * string prop) list option;
      [@option]
      (** A map of annotations to apply to the resource template. *)
  metadata : metadata list;
}
[@@deriving yojson_of]
(** kubernetes_annotations *)

let metadata ?namespace ~name () : metadata = { name; namespace }

let kubernetes_annotations ?annotations ?field_manager ?force ?id
    ?template_annotations ~api_version ~kind ~metadata () :
    kubernetes_annotations =
  {
    annotations;
    api_version;
    field_manager;
    force;
    id;
    kind;
    template_annotations;
    metadata;
  }

type t = {
  annotations : (string * string) list prop;
  api_version : string prop;
  field_manager : string prop;
  force : bool prop;
  id : string prop;
  kind : string prop;
  template_annotations : (string * string) list prop;
}

let make ?annotations ?field_manager ?force ?id ?template_annotations
    ~api_version ~kind ~metadata __id =
  let __type = "kubernetes_annotations" in
  let __attrs =
    ({
       annotations = Prop.computed __type __id "annotations";
       api_version = Prop.computed __type __id "api_version";
       field_manager = Prop.computed __type __id "field_manager";
       force = Prop.computed __type __id "force";
       id = Prop.computed __type __id "id";
       kind = Prop.computed __type __id "kind";
       template_annotations =
         Prop.computed __type __id "template_annotations";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_annotations
        (kubernetes_annotations ?annotations ?field_manager ?force
           ?id ?template_annotations ~api_version ~kind ~metadata ());
    attrs = __attrs;
  }

let register ?tf_module ?annotations ?field_manager ?force ?id
    ?template_annotations ~api_version ~kind ~metadata __id =
  let (r : _ Tf_core.resource) =
    make ?annotations ?field_manager ?force ?id ?template_annotations
      ~api_version ~kind ~metadata __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
