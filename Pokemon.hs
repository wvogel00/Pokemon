module Polemon where

data CardType = Energy | Support | Character

class Card a where
	isType :: a -> CardType

instance Card Pokemon where
	isType _ = Character

instance Card Trainer where
	isType _ = Support

instance Card Type where
	isType _ = Energy

data Type =
	Normal
	| Fire
	| Water
	| Thunder
	| Leaf
	| Psi
	| Fight
	| Stone
	| Ice
	| Poison
	| Evil
	| Ground
	| Fly
	| Insect
	| Steel
	| Dragon deriving (Show,Eq)

data Effect =
	SCoin Int State -- change state
	| DCoin Int Int -- damage to opposite
	| Deck Int
	| Trush Int
	| HP Int

data State = Confused | Palsy | Fired | Iced | Poisoned | Slept

data Skill = Skill{
	sName :: String,
	attack :: Int,
	sEffect :: Maybe Effect
}

data Pokemon = Pokemon{
	pName :: String,
	hp :: Int,
	damage :: Int,
	attr :: Type,
	skills :: [Skill],
	weak :: Type,
	escape :: [Type],
	evolution :: Maybe Pokemon,
	pEffect :: Maybe Effect,
	state :: Maybe State
}

data Trainer = Trainer{
	tName :: String,
	tEffect :: Effect
}



data Field a = Field{
	sideCards :: [a],
	trush :: [a],
	deck :: [a],
	bench :: [Pokemon],
	pokemon :: Pokemon
}
