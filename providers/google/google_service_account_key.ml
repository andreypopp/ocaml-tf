(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_service_account_key = {
  id : string prop option; [@option]
  keepers : (string * string prop) list option; [@option]
  key_algorithm : string prop option; [@option]
  private_key_type : string prop option; [@option]
  public_key_data : string prop option; [@option]
  public_key_type : string prop option; [@option]
  service_account_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_service_account_key) -> ()

let yojson_of_google_service_account_key =
  (function
   | {
       id = v_id;
       keepers = v_keepers;
       key_algorithm = v_key_algorithm;
       private_key_type = v_private_key_type;
       public_key_data = v_public_key_data;
       public_key_type = v_public_key_type;
       service_account_id = v_service_account_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_account_id
         in
         ("service_account_id", arg) :: bnds
       in
       let bnds =
         match v_public_key_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "public_key_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_public_key_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "public_key_data", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_key_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_key_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_algorithm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_algorithm", arg in
             bnd :: bnds
       in
       let bnds =
         match v_keepers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "keepers", arg in
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
       `Assoc bnds
    : google_service_account_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_service_account_key

[@@@deriving.end]

let google_service_account_key ?id ?keepers ?key_algorithm
    ?private_key_type ?public_key_data ?public_key_type
    ~service_account_id () : google_service_account_key =
  {
    id;
    keepers;
    key_algorithm;
    private_key_type;
    public_key_data;
    public_key_type;
    service_account_id;
  }

type t = {
  tf_name : string;
  id : string prop;
  keepers : (string * string) list prop;
  key_algorithm : string prop;
  name : string prop;
  private_key : string prop;
  private_key_type : string prop;
  public_key : string prop;
  public_key_data : string prop;
  public_key_type : string prop;
  service_account_id : string prop;
  valid_after : string prop;
  valid_before : string prop;
}

let make ?id ?keepers ?key_algorithm ?private_key_type
    ?public_key_data ?public_key_type ~service_account_id __id =
  let __type = "google_service_account_key" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       keepers = Prop.computed __type __id "keepers";
       key_algorithm = Prop.computed __type __id "key_algorithm";
       name = Prop.computed __type __id "name";
       private_key = Prop.computed __type __id "private_key";
       private_key_type =
         Prop.computed __type __id "private_key_type";
       public_key = Prop.computed __type __id "public_key";
       public_key_data = Prop.computed __type __id "public_key_data";
       public_key_type = Prop.computed __type __id "public_key_type";
       service_account_id =
         Prop.computed __type __id "service_account_id";
       valid_after = Prop.computed __type __id "valid_after";
       valid_before = Prop.computed __type __id "valid_before";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_service_account_key
        (google_service_account_key ?id ?keepers ?key_algorithm
           ?private_key_type ?public_key_data ?public_key_type
           ~service_account_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?keepers ?key_algorithm ?private_key_type
    ?public_key_data ?public_key_type ~service_account_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?keepers ?key_algorithm ?private_key_type
      ?public_key_data ?public_key_type ~service_account_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
