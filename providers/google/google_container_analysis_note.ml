(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type attestation_authority__hint = {
  human_readable_name : string prop;
      (** The human readable name of this Attestation Authority, for
example qa. *)
}
[@@deriving yojson_of]
(** This submessage provides human-readable hints about the purpose of
the AttestationAuthority. Because the name of a Note acts as its
resource reference, it is important to disambiguate the canonical
name of the Note (which might be a UUID for security purposes)
from readable names more suitable for debug output. Note that
these hints should NOT be used to look up AttestationAuthorities
in security sensitive contexts, such as when looking up
Attestations to verify. *)

type attestation_authority = {
  hint : attestation_authority__hint list;
}
[@@deriving yojson_of]
(** Note kind that represents a logical attestation role or authority.
For example, an organization might have one AttestationAuthority for
QA and one for build. This Note is intended to act strictly as a
grouping mechanism for the attached Occurrences (Attestations). This
grouping mechanism also provides a security boundary, since IAM ACLs
gate the ability for a principle to attach an Occurrence to a given
Note. It also provides a single point of lookup to find all attached
Attestation Occurrences, even if they don't all live in the same
project. *)

type related_url = {
  label : string prop option; [@option]
      (** Label to describe usage of the URL *)
  url : string prop;
      (** Specific URL associated with the resource. *)
}
[@@deriving yojson_of]
(** URLs associated with this note and related metadata. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_container_analysis_note = {
  expiration_time : string prop option; [@option]
      (** Time of expiration for this note. Leave empty if note does not expire. *)
  id : string prop option; [@option]  (** id *)
  long_description : string prop option; [@option]
      (** A detailed description of the note *)
  name : string prop;  (** The name of the note. *)
  project : string prop option; [@option]  (** project *)
  related_note_names : string prop list option; [@option]
      (** Names of other notes related to this note. *)
  short_description : string prop option; [@option]
      (** A one sentence description of the note. *)
  attestation_authority : attestation_authority list;
  related_url : related_url list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_container_analysis_note *)

let attestation_authority__hint ~human_readable_name () :
    attestation_authority__hint =
  { human_readable_name }

let attestation_authority ~hint () : attestation_authority = { hint }
let related_url ?label ~url () : related_url = { label; url }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_container_analysis_note ?expiration_time ?id
    ?long_description ?project ?related_note_names ?short_description
    ?timeouts ~name ~attestation_authority ~related_url () :
    google_container_analysis_note =
  {
    expiration_time;
    id;
    long_description;
    name;
    project;
    related_note_names;
    short_description;
    attestation_authority;
    related_url;
    timeouts;
  }

type t = {
  create_time : string prop;
  expiration_time : string prop;
  id : string prop;
  kind : string prop;
  long_description : string prop;
  name : string prop;
  project : string prop;
  related_note_names : string list prop;
  short_description : string prop;
  update_time : string prop;
}

let make ?expiration_time ?id ?long_description ?project
    ?related_note_names ?short_description ?timeouts ~name
    ~attestation_authority ~related_url __id =
  let __type = "google_container_analysis_note" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       expiration_time = Prop.computed __type __id "expiration_time";
       id = Prop.computed __type __id "id";
       kind = Prop.computed __type __id "kind";
       long_description =
         Prop.computed __type __id "long_description";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       related_note_names =
         Prop.computed __type __id "related_note_names";
       short_description =
         Prop.computed __type __id "short_description";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_container_analysis_note
        (google_container_analysis_note ?expiration_time ?id
           ?long_description ?project ?related_note_names
           ?short_description ?timeouts ~name ~attestation_authority
           ~related_url ());
    attrs = __attrs;
  }

let register ?tf_module ?expiration_time ?id ?long_description
    ?project ?related_note_names ?short_description ?timeouts ~name
    ~attestation_authority ~related_url __id =
  let (r : _ Tf_core.resource) =
    make ?expiration_time ?id ?long_description ?project
      ?related_note_names ?short_description ?timeouts ~name
      ~attestation_authority ~related_url __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
