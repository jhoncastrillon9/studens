<div>
    <label for="name">Name:</label>
    <input type="text" name="name" id="name" value="{{ old('name', $category->name ?? '') }}">
    @error('name')
        <div>{{ $message }}</div>
    @enderror
</div>

<div>
    <label for="description">Description:</label>
    <textarea name="description" id="description">{{ old('description', $category->description ?? '') }}</textarea>
    @error('description')
        <div>{{ $message }}</div>
    @enderror
</div>
