(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type attestation_authority_note__public_keys__pkix_public_key = {
  public_key_pem : string prop option; [@option]
  signature_algorithm : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : attestation_authority_note__public_keys__pkix_public_key) ->
  ()

let yojson_of_attestation_authority_note__public_keys__pkix_public_key
    =
  (function
   | {
       public_key_pem = v_public_key_pem;
       signature_algorithm = v_signature_algorithm;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_signature_algorithm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "signature_algorithm", arg in
             bnd :: bnds
       in
       let bnds =
         match v_public_key_pem with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "public_key_pem", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : attestation_authority_note__public_keys__pkix_public_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_attestation_authority_note__public_keys__pkix_public_key

[@@@deriving.end]

type attestation_authority_note__public_keys = {
  ascii_armored_pgp_public_key : string prop option; [@option]
  comment : string prop option; [@option]
  id : string prop option; [@option]
  pkix_public_key :
    attestation_authority_note__public_keys__pkix_public_key list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : attestation_authority_note__public_keys) -> ()

let yojson_of_attestation_authority_note__public_keys =
  (function
   | {
       ascii_armored_pgp_public_key = v_ascii_armored_pgp_public_key;
       comment = v_comment;
       id = v_id;
       pkix_public_key = v_pkix_public_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_pkix_public_key then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_attestation_authority_note__public_keys__pkix_public_key)
               v_pkix_public_key
           in
           let bnd = "pkix_public_key", arg in
           bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_comment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "comment", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ascii_armored_pgp_public_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ascii_armored_pgp_public_key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : attestation_authority_note__public_keys ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attestation_authority_note__public_keys

[@@@deriving.end]

type attestation_authority_note = {
  note_reference : string prop;
  public_keys : attestation_authority_note__public_keys list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : attestation_authority_note) -> ()

let yojson_of_attestation_authority_note =
  (function
   | {
       note_reference = v_note_reference;
       public_keys = v_public_keys;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_public_keys then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_attestation_authority_note__public_keys)
               v_public_keys
           in
           let bnd = "public_keys", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_note_reference
         in
         ("note_reference", arg) :: bnds
       in
       `Assoc bnds
    : attestation_authority_note -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attestation_authority_note

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type google_binary_authorization_attestor = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  attestation_authority_note : attestation_authority_note list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_binary_authorization_attestor) -> ()

let yojson_of_google_binary_authorization_attestor =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       project = v_project;
       attestation_authority_note = v_attestation_authority_note;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_attestation_authority_note then bnds
         else
           let arg =
             (yojson_of_list yojson_of_attestation_authority_note)
               v_attestation_authority_note
           in
           let bnd = "attestation_authority_note", arg in
           bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_binary_authorization_attestor ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_binary_authorization_attestor

[@@@deriving.end]

let attestation_authority_note__public_keys__pkix_public_key
    ?public_key_pem ?signature_algorithm () :
    attestation_authority_note__public_keys__pkix_public_key =
  { public_key_pem; signature_algorithm }

let attestation_authority_note__public_keys
    ?ascii_armored_pgp_public_key ?comment ?id
    ?(pkix_public_key = []) () :
    attestation_authority_note__public_keys =
  { ascii_armored_pgp_public_key; comment; id; pkix_public_key }

let attestation_authority_note ?(public_keys = []) ~note_reference ()
    : attestation_authority_note =
  { note_reference; public_keys }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_binary_authorization_attestor ?description ?id ?project
    ?timeouts ~name ~attestation_authority_note () :
    google_binary_authorization_attestor =
  {
    description;
    id;
    name;
    project;
    attestation_authority_note;
    timeouts;
  }

type t = {
  tf_name : string;
  description : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
}

let make ?description ?id ?project ?timeouts ~name
    ~attestation_authority_note __id =
  let __type = "google_binary_authorization_attestor" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_binary_authorization_attestor
        (google_binary_authorization_attestor ?description ?id
           ?project ?timeouts ~name ~attestation_authority_note ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?project ?timeouts ~name
    ~attestation_authority_note __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?project ?timeouts ~name
      ~attestation_authority_note __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
