(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type entry__pattern = {
  regex : string prop;  (** The regex that defines the pattern. *)
  validation : string prop option; [@option]
      (** The validation algorithm to apply with this pattern. *)
}
[@@deriving yojson_of]
(** entry__pattern *)

type entry = {
  enabled : bool prop option; [@option]
      (** Whether the entry is active. Defaults to `false`. *)
  id : string prop option; [@option]  (** Unique entry identifier. *)
  name : string prop;  (** Name of the entry to deploy. *)
  pattern : entry__pattern list;
}
[@@deriving yojson_of]
(** List of entries to apply to the profile. *)

type cloudflare_dlp_profile = {
  account_id : string prop;
      (** The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  allowed_match_count : float prop;
      (** Related DLP policies will trigger when the match count exceeds the number set. *)
  description : string prop option; [@option]
      (** Brief summary of the profile and its intended use. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** Name of the profile. **Modifying this attribute will force creation of a new resource.** *)
  type_ : string prop; [@key "type"]
      (** The type of the profile. Available values: `custom`, `predefined`. **Modifying this attribute will force creation of a new resource.** *)
  entry : entry list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare DLP Profile resource. Data Loss Prevention profiles
are a set of entries that can be matched in HTTP bodies or files.
They are referenced in Zero Trust Gateway rules.
 *)

let entry__pattern ?validation ~regex () : entry__pattern =
  { regex; validation }

let entry ?enabled ?id ~name ~pattern () : entry =
  { enabled; id; name; pattern }

let cloudflare_dlp_profile ?description ?id ~account_id
    ~allowed_match_count ~name ~type_ ~entry () :
    cloudflare_dlp_profile =
  {
    account_id;
    allowed_match_count;
    description;
    id;
    name;
    type_;
    entry;
  }

type t = {
  account_id : string prop;
  allowed_match_count : float prop;
  description : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
}

let make ?description ?id ~account_id ~allowed_match_count ~name
    ~type_ ~entry __id =
  let __type = "cloudflare_dlp_profile" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       allowed_match_count =
         Prop.computed __type __id "allowed_match_count";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_dlp_profile
        (cloudflare_dlp_profile ?description ?id ~account_id
           ~allowed_match_count ~name ~type_ ~entry ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ~account_id
    ~allowed_match_count ~name ~type_ ~entry __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~account_id ~allowed_match_count ~name
      ~type_ ~entry __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
