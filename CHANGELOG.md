# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- `Hashable` conformance for `Note`
- `CustomStringConvertable` conformance
- `Identifiable` conformance for `Note`

## [3.0.0] - 2020-07-29

### Breaking

- Extract `ChordVoicing` description method to `ChordFormatter`
- Rename `Scaletor.generateScale()` to `Scaletor.makeScale`

### Added

- Make chord progressions for mode
- `ChordFormatter` to produce string descriptions of chords easily, with style options

## [2.0.0] - 2020-07-26

### Added

- `Mode` protocol
- Harmonic Minor modes (fixes #1)
- Melodic Minor modes

### Breaking

- Rename `Chord` to `ChordVoicing`
- Rename `Mode` to `MajorMode`

## [1.0.0] - 2020-07-11

### Added

- Initial package release

